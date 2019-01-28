.class public Lc8/eTh;
.super Lc8/RD;
.source "YKBase.java"


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "DYKBaseJSBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private getDeviceInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 6
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 44
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 45
    .local v2, "result":Lc8/kE;
    const-string/jumbo v4, "deviceID"

    sget-object v5, Lc8/NHg;->deviceid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v4, "guid"

    sget-object v5, Lc8/NHg;->guid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "pid":Ljava/lang/String;
    :try_start_0
    const-class v4, Lc8/vdn;

    invoke-static {v4}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/vdn;

    invoke-interface {v4}, Lc8/vdn;->getPid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 53
    const-string/jumbo v4, "pid"

    invoke-virtual {v2, v4, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    const-string/jumbo v4, "ttid"

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v4, "network"

    sget-object v5, Lc8/NHg;->network:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "operator":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lc8/NHg;->operator:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 63
    const-string/jumbo v4, "operator"

    invoke-virtual {v2, v4, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_1
    const/4 v3, 0x0

    .line 67
    .local v3, "utdid":Ljava/lang/String;
    :try_start_2
    const-class v4, Lc8/vdn;

    invoke-static {v4}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/vdn;

    invoke-interface {v4}, Lc8/vdn;->getUtdid()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 71
    const-string/jumbo v4, "utdid"

    invoke-virtual {v2, v4, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_2
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 74
    return-void

    .line 53
    .end local v0    # "operator":Ljava/lang/String;
    .end local v3    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "pid"

    invoke-virtual {v2, v4, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    const-string/jumbo v5, "pid"

    invoke-virtual {v2, v5, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 63
    .restart local v0    # "operator":Ljava/lang/String;
    :catch_1
    move-exception v4

    const-string/jumbo v4, "operator"

    invoke-virtual {v2, v4, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v4

    const-string/jumbo v5, "operator"

    invoke-virtual {v2, v5, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 71
    .restart local v3    # "utdid":Ljava/lang/String;
    :catch_2
    move-exception v4

    const-string/jumbo v4, "utdid"

    invoke-virtual {v2, v4, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception v4

    const-string/jumbo v5, "utdid"

    invoke-virtual {v2, v5, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method private nativeOpen(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 8
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 85
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .local v6, "url":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 105
    :goto_1
    return-void

    .line 83
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v6, p1

    .restart local v6    # "url":Ljava/lang/String;
    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 90
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "scheme":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v7, p0, Lc8/eTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v7}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/Ybf;->disallowLoopback()Lc8/Ybf;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc8/Ybf;->toUri(Landroid/net/Uri;)Z

    move-result v2

    .line 98
    .local v2, "result":Z
    if-eqz v2, :cond_2

    .line 99
    :try_start_1
    iget-object v7, p0, Lc8/eTh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v7}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/LHg;->updateH5Args(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_1

    .line 101
    :catch_1
    move-exception v4

    .line 102
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "YKWeb.YKBase"

    invoke-static {v7, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 32
    const-string/jumbo v1, "getDeviceInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-direct {p0, p3}, Lc8/eTh;->getDeviceInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 40
    :goto_0
    return v0

    .line 36
    :cond_0
    const-string/jumbo v1, "nativeOpen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-direct {p0, p2, p3}, Lc8/eTh;->nativeOpen(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
